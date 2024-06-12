import { Controller } from "@hotwired/stimulus";

 export default class extends Controller {
   static values = {
     skillId: Number
   }

   toggle(event) {
     const completed = event.target.checked;
     const skillId = this.skillIdValue;
     const levelId = event.target.dataset.levelsLevelIdValue;

     fetch(`/skills/${skillId}/levels/${levelId}`, {
       method: 'PATCH',
       headers: {
         'Content-Type': 'application/json',
         'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
       },
       body: JSON.stringify({ level: { completed: completed } })
     })
     .then(response => {
       console.log('Response status:', response.status);
       if (!response.ok) {
         throw new Error('Network response was not ok');
       }
       return response.json();
     })
     .then(data => {
       console.log('Response data:', data);
       if (data.success) {
         console.log('Level updated successfully');
       } else {
         console.error('Failed to update level', data.errors);
       }
     })
     .catch(error => {
       console.error('Error:', error);
     });
   }
 }
=======
export default class extends Controller {
  static values = {
    skillId: Number
  }

  toggle(event) {
    const completed = event.target.checked;
    const skillId = this.skillIdValue;
    const levelId = event.target.dataset.levelsLevelIdValue;

    fetch(`/skills/${skillId}/levels/${levelId}`, {
      method: 'PATCH',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
      },
      body: JSON.stringify({ level: { completed: completed } })
    })
    .then(response => {
      console.log('Response status:', response.status);
      if (!response.ok) {
        throw new Error('Network response was not ok');
      }
      return response.json();
    })
    .then(data => {
      console.log('Response data:', data);
      if (data.success) {
        console.log('Level updated successfully');
      } else {
        console.error('Failed to update level', data.errors);
      }
    })
    .catch(error => {
      console.error('Error:', error);
    });
  }
}
