.class Lcom/android/systemui/shared/recents/model/RecentsTaskLoader$2;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"

# interfaces
.implements Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader$2;->this$0:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 407
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader$2;->this$0:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->onPackagesChanged(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public bridge synthetic onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public bridge synthetic onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public bridge synthetic onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public bridge synthetic onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public bridge synthetic onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    return-void
.end method
