<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');
// Categories
$routes->get('categories/selected/(:num)', 'Categories::selected/$1');
$routes->get('/categories', 'Categories::index');
$routes->get('/categories/new', 'Categories::new');
$routes->post('/categories/add', 'Categories::add');
$routes->get('/categories/remove', 'Categories::remove');
$routes->post('/categories/delete', 'Categories::delete');

// Questions
$routes->get('/questions/new', 'Questions::new');
$routes->post('/questions/add', 'Questions::add');

// Account details
$routes->get('/account', 'Account::index');

service('auth')->routes($routes);