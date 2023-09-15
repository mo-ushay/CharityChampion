<template>
    <div>
      <h1>Donor Registration</h1>
      <form @submit.prevent="registerDonor">
        <label for="name">Name:</label>
        <input type="text" v-model="name" required>
        
        <label for="email">Email:</label>
        <input type="email" v-model="email" required>
        
        <label for="password">Password:</label>
        <input type="password" v-model="password" required>
        
        <button type="submit">Register</button>
      </form>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        name: '',
        email: '',
        password: '',
      };
    },
    methods: {
      async registerDonor() {
        try {
          // Make an API request to your Rails backend to register the donor
          // Use Axios or another HTTP library to make the POST request
          const response = await axios.post('/donors', {
            name: this.name,
            email: this.email,
            password: this.password,
          });
          // Handle successful registration (e.g., show a success message)
          console.log('Donor registered:', response.data);
          // You can also redirect the user to their profile or a thank you page
        } catch (error) {
          // Handle registration error (e.g., show an error message)
          console.error('Registration error:', error);
        }
      },
    },
  };
  </script>
  