import {Component, OnInit} from '@angular/core';
import {Router} from "@angular/router";

@Component({
  selector: 'app-header-menu',
  templateUrl: './menu.component.html',
  styleUrls: ['./menu.component.css']
})
export class MenuComponent implements OnInit {

  constructor(private router: Router) {}

  ngOnInit(): void {
  }

  isActivePage(controller?: string) {
    const activatedRoute = this.router.url.substr(1);
    if (controller === 'home' && activatedRoute === '') {
      return 'nav-item active';
    }
    return controller === activatedRoute ? 'nav-item active' : 'nav-item';
  }
}
