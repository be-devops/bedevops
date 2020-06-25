import {NgModule} from '@angular/core';
import {RouterModule, Routes} from '@angular/router';
import {NotFoundComponent} from '../errors/not-found/not-found.component';
import {HomePageComponent} from "./home-page/home-page.component";

const subRoutes: Routes = [
  {path: '', redirectTo: 'home', pathMatch: 'full'},
  {
    path: '',
    children: [
      {path: 'home', component: HomePageComponent},
      {path: '**', component: NotFoundComponent},
    ]
  },
];

@NgModule({
  imports: [
    RouterModule.forChild(subRoutes)
  ],
  exports: [
    RouterModule
  ]
})
export class PageRoutingModule {
}
