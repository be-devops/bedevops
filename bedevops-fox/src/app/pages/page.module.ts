import {NgModule} from '@angular/core';
import {PageRoutingModule} from './page-routing.module';
import {HomePageComponent} from './home-page/home-page.component';

@NgModule({
  declarations: [
    HomePageComponent
  ],
  imports: [
    PageRoutingModule,
  ],
  providers: []
})
export class PageModule {
}
