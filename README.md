<div id="top"></div>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<h1 align="center">Tranquili-Tea</h1>

  <p align="center">
    <br />
    <a href="https://github.com/chloell5/tranquili-tea"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/chloell5/tranquili-tea/issues">Report Bug</a>
    ·
    <a href="https://github.com/chloell5/tranquili-tea/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project
This is a REST API for a tea subscription service to:

* View a customer's active and cancelled subscriptions
* Create a tea subscription for a customer
* Cancel a subscription

<br />
After cloning the repo:

  1. `bundle install`
  3. Run `rails db:{create,migrate}`
  5. Run `rails s`
  7. API endpoints are:

```
GET   /api/v1/customers/:customer_id/subscriptions
POST  /api/v1/customers/:customer_id/subscriptions
PATCH /api/v1/customers/:customer_id/subscriptions/:id                 
```

<br />
<p align="right">(<a href="#top">back to top</a>)</p>



### Built With

* Ruby
* Rails
* PostgreSQL
* RSpec
* Postman

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- CONTACT -->
## Contact

Chloe Price - [@chloell5](https://twitter.com/chloell5) - chloell@protonmail.ch

Project Link: [https://github.com/chloell5/rails-engine](https://github.com/chloell5/sweater-weather)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* Thank you Turing, and your wonderful instructors!

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/chloell5/rails-engine.svg?style=for-the-badge
[contributors-url]: https://github.com/chloell5/rails-engine/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/chloell5/rails-engine.svg?style=for-the-badge
[forks-url]: https://github.com/chloell5/rails-engine/network/members
[stars-shield]: https://img.shields.io/github/stars/chloell5/rails-engine.svg?style=for-the-badge
[stars-url]: https://github.com/chloell5/rails-engine/stargazers
[issues-shield]: https://img.shields.io/github/issues/chloell5/rails-engine.svg?style=for-the-badge
[issues-url]: https://github.com/chloell5/rails-engine/issues
[license-shield]: https://img.shields.io/github/license/chloell5/rails-engine.svg?style=for-the-badge
[license-url]: https://github.com/chloell5/rails-engine/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/chloe-price-1705
[product-screenshot]: images/screenshot.png
