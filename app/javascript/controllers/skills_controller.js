import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    this.selectedSkills = new Set(JSON.parse(this.element.dataset.selectedSkillIds));
  }

  toggleSkill(event) {
    event.preventDefault();
    const skillId = event.currentTarget.dataset.skillId;

    if (this.selectedSkills.has(skillId)) {
      this.selectedSkills.delete(skillId);
    } else {
      this.selectedSkills.add(skillId);
    }

    this.updateSelectedSkills();
  }

  updateSelectedSkills() {
    fetch(`/users/${this.userIdValue}/update_skills`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "X-CSRF-Token": document.querySelector("[name='csrf-token']").content
      },
      body: JSON.stringify({ skill_ids: Array.from(this.selectedSkills) })
    })
    .then(response => {
      if (response.ok) {
        location.reload();
      } else {
        alert("Failed to update skills");
      }
    });
  }

  get userIdValue() {
    return this.element.dataset.userId;
  }
}
