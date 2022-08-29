  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="{{ asset('images/admin_images/AdminLTELogo.png')}}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Ecommerce Platform</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{ asset('images/admin_images/admin_profile/'.Auth::guard('admin')->user()->image) }}" class="img-circle elevation-2" alt="User Image">
         
        </div>
        <div class="info">
          <a href="#" class="d-block">{{ ucfirst(Auth::guard('admin')->user()->name) }}</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
        @if(Session::get('page')=='dashboard')
            <?php $active ="active"; ?>
        @else
            <?php $active =""; ?>
        @endif
        <li class="nav-item">
            <a href="/admin/dashboard" class="nav-link {{ $active }} ">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
                
              </p>
            </a>
          </li>
        @if(Session::get('page')=='settings' || Session::get('page')=='admin_details_update')
            <?php $active ="active" ?>
        @else
            <?php $active ="" ?>
        @endif

          <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link {{$active}}">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Settings
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>

@if(Session::get('page')=='settings')
    <?php $active = "active" ?>
@else
    <?php $active = "" ?>
@endif

            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/admin/settings" class="nav-link {{$active}}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Updata Admin Password</p>
                </a>
              </li>
@if(Session::get('page')=='admin_details_update')
    <?php $active = "active" ?>
@else
    <?php $active = "" ?>
@endif

              <li class="nav-item">
                <a href="/admin/admin_details_update" class="nav-link {{$active}}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Updata Admin Details</p>
                </a>
              </li>
            </ul>
          </li>
          
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
