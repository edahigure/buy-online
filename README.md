<a name="readme-top"></a>

<div align="center">



  <h1><b>Budget App</b></h1>

</div>

# 📗 Table of Contents

- [📖 About the Project](#about-project)

  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Available Scripts](#available-scripts)
  - [Clone](#clone)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

# 📖 Budget app 

The Budget app is about building a mobile web application where you can manage your budget: you have a list of transactions associated with a category, so that you can see how much money you spent and on what.

# live version

[online version](https://budget-app-7tph.onrender.com/)

## 🛠 Built With <a name="built-with"></a>

Ruby on Rails

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://en.wikipedia.org/wiki/Ruby_(programming_language)">Ruby</a></li>
<li><a href="https://guides.rubyonrails.org/active_record_basics.html#what-is-active-record-questionmark">Active Record Basics
</a></li>
  </ul>
</details>

### Key Features <a name="key-features"></a>

- **Register and log in, so that the data is private for others.**
- **Introduce new transactions associated with a category.**
- **See the money spent on each category.**


<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Prerequisites (an email account)

in order to run this project you need:

gem install rails

To run this application you need an email account properly configured. You need the 2-step verification for your gmail account for example as is done here:

https://help.warmupinbox.com/en/articles/4934806-configure-for-google-workplace-with-two-factor-authentication-2fa


and also and App password, you can generete it in the following link

https://myaccount.google.com/apppasswords?utm_source=google-account&utm_medium=myaccountsecurity&utm_campaign=tsv-settings&rapt=AEjHL4PWzrboEKqAJ1-uFiT_jc_JM7D04bZJ4RO6XgHr0kfA3EVo-zMEW8QSMS-wHxDfRHi83r9D_pwiNb9lH5DyMko0upx3EA


Then you can change the password and email in the files  ./config/environments/development.rb 
./config/environment.rb 
with your account information:

    user_name:      'edahigure@gmail.com',
    password:       'iewencoweo3892',
    domain:         'localhost:3000',
    address:       'smtp.gmail.com',
    port:          '587',
    authentication:  "plain",
    enable_starttls_auto: true

and also line 29 of file ./config/environments/initializers/devise.rb 
by
config.mailer_sender = 'edahigure@gmail.com'    


Watch this useful video to know how to configure an email confirmation in rails

https://www.youtube.com/watch?v=sVJRkTxqlSQ


## Getting Started

To get a local copy up and running follow these simple example steps.

### Clone <a name="clone"> Setup</a>

Clone this repository to your desired folder:

```sh
  git clone https://github.com/edahigure/budget-app.git
```
To install the necessary dependencies, you should run:


```
bundler install
```

## 🤖 Available Scripts <a name="available-scripts"></a>

In the project directory, you can run:

```
rubocop -A
```

To fix all Linter error automatically

## Run the tests

```
rspec spec
```

## Usage 

To run the project, execute the following command:
```
  rails server
``` 

and put the url of your localhost

<p align="right">(<a href="#readme-top">back to top</a>)</p>
<!-- AUTHOR -->

## 👥 Author <a name="authors"></a>


👤 **Edahi Antonio Gutiérrez Reyes**

- GitHub: [@edahigure](https://github.com/edahigure)
- Twitter: [@edahigure](https://twitter.com/edahigure)
- LinkedIn: [edahigure](https://www.linkedin.com/in/edahigure/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- New styles.
- More calculations on budgets
- Make real payments and money transfer

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!
Feel free to check the [issues page](https://github.com/edahigure/Recipe-app/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

If you like this project please let us know

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

Thanks to microverse to asign us the homework
<br/>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ❓ FAQ <a name="faq"></a>

- **Is there any restriction to adapting the app to other purpose?**

  - No problem.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


