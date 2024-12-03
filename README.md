# Technical Documentation  

## Architecture  

### Overview

The project follows the Clean Architecture approach designed by Robert C. Martin (Uncle Bob) for feature/module development. This approach splits the system into three main layers: Data, Domain, and Presentation, enabling clear segregation of concerns and better system structure.  

### Core Componenets

The `lib` folder has 2 main folder (`core` and `modules`).  

- The `core` folder contains the basic funciontality that is needed for the system to funciton, such as (`constants`, `utils`, and so on).  

#### Netowrk

The network folder manages all networking configurations and encapsulates the network package, allowing for easy expansion and swapping of the HTTP client. All network requests are routed through the NetworkSession class. Each request is passed with a NetworkRequest object containing details like query parameters, endpoints, and custom headers.
This modular design allows for easy API versioning or migrating specific requests. Network responses are either mapped to data models (usually via JSON) or return a ServerException. The ServerException class translates network package exceptions into custom exceptions, decoupling the app from the specific package. These exceptions are then mapped to Failure objects, enabling type-based error handling for robustness and improved error management.

#### Routing

The services folder contains routing configurations designed for maintainability.
Each screen has a static id property that represents its route name:

```dart
context.push(ScreenName.id);
```

This approach allows developers to navigate directly to screens without searching through a centralized route list. Routes are defined within each module’s router file and aggregated in parent modules. The complete routing setup is consolidated in the app_router file.

#### Dipendence Injection (DI)

Dependency Injection is handled using the get_it and injectable packages. This combination streamlines development by generating DI code through annotations:

```dart
@Singleton(as: ClassA)
class ClassB extends ClassA{}
```

#### Utils

The utils folder includes helper functionalities for consistent and efficient development, such as the interface folder, which defines contracts or guidelines for developers.

#### Modules

Modules can contain sub-modules or stand alone, each representing a distinct system part. As noted, modules adhere to the Clean Architecture approach with three layers:
  
- The `Presentation` layer handled the UI and capturing the user's input to trigger events. It is also responsible to know when to redraw the UI in case of a change occuring in the data or in the System that requires so.  
  
- The `Domain` layer, simply put, handles the "translation" between teh `Data` layer and the `Presentation` layer.  

- The `Data` layer handles the retiriving data from the data source(s) (local or remote), the parsing of said data, and passing them to the `Domain` layer.  

## Packages Used

[`dio`](https://pub.dev/packages/dio): networking
[`freezed_annotation`](https://pub.dev/packages/freezed_annotation) & [`freezed`](https://pub.dev/packages/freezed): classes auto generating  
[`fpdart`](https://pub.dev/packages/fpdart): allows for adding functional programming features into dart  
[`get_it`](https://pub.dev/packages/get_it): di  
[`go_router`](https://pub.dev/packages/go_router): routing  
[`injectable`](https://pub.dev/packages/injectable) & [`injectable_generator`](https://pub.dev/packages/injectable_generator): generating of di using annotations  
[`flutter_bloc`](https://pub.dev/packages/flutter_bloc) & [`bloc`](https://pub.dev/packages/bloc): state managment  
[`bloc_test`](https://pub.dev/packages/bloc_test) & [`mockito`](https://pub.dev/packages/mockito): testing  
[`build_runner`](https://pub.dev/packages/build_runner): runs the code generation  
