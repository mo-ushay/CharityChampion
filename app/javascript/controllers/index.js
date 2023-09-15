import { createRouter, createWebHistory } from 'vue-router';
import DonorRegistration from '../../../frontend/src/components/DonorRegistration';

const routes = [
  // ...other routes
  { path: '/register', component: DonorRegistration },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
