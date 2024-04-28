# blog_app

A new Flutter project.

## Steps

### creating folder structure
- Steps will be creating ui in presentation, making domain layer(only interface declare) and then moving to implementation of interfaces (domain->repositories)

- Created feature/auth -> data,domain and presentation folder
- presentation will contain the subfolders based on widgets or ui pages
- From the clean architecture diagram : "domain"->"repository"->"auth_repository.dart" will contain the interfaces,and this interfaces actual implementation will be done in the "data" layer impl classes.
- We have to expose each functionality with interface so that clean arch can be achieved and domain layer stays independent from any layer.

### Step Connecting the data and domain
- data/repositories will contain the actual implementation of domain/repository interface methods.
- this is done to remove the dependency between domain and data layer
- Actual class where interface was declared: "auth_repository.dart" and its implementation will be done in the data/repositories : "auth_repository_impl.dart"


