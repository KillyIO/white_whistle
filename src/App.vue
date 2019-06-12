<template>
  <div id="app" class="flex min-h-screen">
    <!-- remove bg-red-600 in release -->
    <div class="w-24 fixed min-h-screen flex justify-center items-center">
      <ul>
        <router-link tag="li" to="/worlds" class="mb-10 text-gray-900">
          <a>
            <font-awesome-icon icon="globe" />
          </a>
        </router-link>
        <router-link tag="li" to="/locations" class="mb-10 text-gray-900">
          <a>
            <font-awesome-icon icon="map-marked-alt" />
          </a>
        </router-link>
        <router-link tag="li" to="/characters" class="mb-10 text-gray-900">
          <a>
            <font-awesome-icon icon="users" />
          </a>
        </router-link>
        <router-link tag="li" to="/artifacts" class="mb-10 text-gray-900">
          <a>
            <font-awesome-icon icon="scroll" />
          </a>
        </router-link>
        <li class="mb-10 text-gray-900">
          <a href="#">
            <font-awesome-icon icon="plus" />
          </a>
        </li>
        <router-link tag="li" to="/search" class="mb-10 text-gray-900">
          <a>
            <font-awesome-icon icon="search" />
          </a>
        </router-link>
      </ul>
    </div>

    <div class="w-full ml-24">
      <div class="container mx-auto">
        <router-view/>
      </div>
    </div>
  </div>
</template>

<style src="./css/main.css">
</style>
