import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import {NgxPaginationModule} from 'ngx-pagination';

import { EngagementAppComponent } from './engagement-app.component';

import { NavBarComponent } from './events/audience/nav/navbar.component';
import { IfRameComponent } from './events/audience/i-frame/i-frame.component';
import { OrgloginComponent } from './events/organizer/login/orglogin.component';
import { OrganizerComponent } from './events/organizer/organizer.component';
import {EngAudAppComponent} from './engappaudcomponent'
import {OrgLoginAuthguard} from './events/services/orgloginrouteguard'
import {OrgNavBarComponent} from './events/organizer/nav/orgnavbar.component'

import { appRoutes} from './routes';
import { EngagementService} from './events/services/engagement.service'
import {EngEventsResolver} from './events/services/eng-events-resolver-service'
import {OrgLoginService} from './events/services/orgloginservice'
import { FormsModule }   from '@angular/forms';
import {OrgCreateEvent} from './events/organizer/createevent/createevent.component'
import { ReactiveFormsModule } from '@angular/forms'
import { NgForm } from '@angular/forms'

@NgModule({
  declarations: [
    EngagementAppComponent,
    NavBarComponent,
    IfRameComponent,
    OrgloginComponent,
    OrganizerComponent,
    EngAudAppComponent,
    OrgNavBarComponent,
    OrgCreateEvent
  ],
  providers: [EngagementService,EngEventsResolver, OrgLoginService, OrgLoginAuthguard, NgForm],
  imports: [
    BrowserModule,
    HttpClientModule,
    RouterModule.forRoot(appRoutes),
    NgxPaginationModule,
    FormsModule,
    ReactiveFormsModule
  ],
  bootstrap: [EngagementAppComponent]
})
export class AppModule { }
