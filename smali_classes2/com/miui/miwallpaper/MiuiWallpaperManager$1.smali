.class Lcom/miui/miwallpaper/MiuiWallpaperManager$1;
.super Ljava/lang/Object;
.source "MiuiWallpaperManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/miwallpaper/MiuiWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;


# direct methods
.method public static synthetic $r8$lambda$zWdx1K_a8Bj3t7WIISVi6zqcr1s(Lcom/miui/miwallpaper/MiuiWallpaperManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->lambda$notifyInitComplete$0()V

    return-void
.end method

.method constructor <init>(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$notifyInitComplete$0()V
    .locals 2

    .line 366
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-static {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$fgetmAsyncInitCallbacks(Lcom/miui/miwallpaper/MiuiWallpaperManager;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 367
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;

    if-eqz v0, :cond_0

    .line 370
    invoke-static {}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$sfgetsInstance()Lcom/miui/miwallpaper/MiuiWallpaperManager;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;->onMiuiWallpaperInitialized(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    .line 371
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyInitComplete()V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-static {v0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$fgetmSyncInitCallbacks(Lcom/miui/miwallpaper/MiuiWallpaperManager;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 358
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;

    if-eqz v1, :cond_0

    .line 361
    invoke-static {}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$sfgetsInstance()Lcom/miui/miwallpaper/MiuiWallpaperManager;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;->onMiuiWallpaperInitialized(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    .line 362
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-static {v0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$fgetmMHandler(Lcom/miui/miwallpaper/MiuiWallpaperManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/miwallpaper/MiuiWallpaperManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/miui/miwallpaper/MiuiWallpaperManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-static {p2}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$fputmService(Lcom/miui/miwallpaper/MiuiWallpaperManager;Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;)V

    .line 331
    iget-object p2, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$fputmServiceConnected(Lcom/miui/miwallpaper/MiuiWallpaperManager;Z)V

    .line 333
    iget-object p2, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-static {p2}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$mgetSdkVersionCodeInternal(Lcom/miui/miwallpaper/MiuiWallpaperManager;)I

    move-result v1

    invoke-static {p2, v1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$fputmServerVersionCode(Lcom/miui/miwallpaper/MiuiWallpaperManager;I)V

    .line 334
    iget-object p2, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-virtual {p2}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->getSdkVersionInternal()F

    move-result v1

    invoke-static {p2, v1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$fputmServerVersion(Lcom/miui/miwallpaper/MiuiWallpaperManager;F)V

    .line 336
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected::componentName="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " instance="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$sfgetsInstance()Lcom/miui/miwallpaper/MiuiWallpaperManager;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " asyncSize="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-static {p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$fgetmAsyncInitCallbacks(Lcom/miui/miwallpaper/MiuiWallpaperManager;)Ljava/util/HashSet;

    move-result-object p1

    .line 337
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " syncSize="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-static {p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$fgetmSyncInitCallbacks(Lcom/miui/miwallpaper/MiuiWallpaperManager;)Ljava/util/HashSet;

    move-result-object p1

    .line 338
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " versionCode="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-static {p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$fgetmServerVersionCode(Lcom/miui/miwallpaper/MiuiWallpaperManager;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " version="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-static {p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$fgetmServerVersion(Lcom/miui/miwallpaper/MiuiWallpaperManager;)F

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " con="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-static {p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$fgetmServiceConnection(Lcom/miui/miwallpaper/MiuiWallpaperManager;)Landroid/content/ServiceConnection;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiuiWallpaperManager"

    .line 336
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-static {p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$mtryRegisterWallpaperChangeCallback(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    .line 344
    iget-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-static {p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$mtryRebindKeyguardCallback(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    .line 346
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected::mAlphaSurface = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-static {v1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$fgetmAlphaSurface(Lcom/miui/miwallpaper/MiuiWallpaperManager;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNormalSurface = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-static {v1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$fgetmNormalSurface(Lcom/miui/miwallpaper/MiuiWallpaperManager;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-static {p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$fgetmAlphaSurface(Lcom/miui/miwallpaper/MiuiWallpaperManager;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-static {p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$fgetmNormalSurface(Lcom/miui/miwallpaper/MiuiWallpaperManager;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 350
    iget-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-static {p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$fgetmNormalSurface(Lcom/miui/miwallpaper/MiuiWallpaperManager;)Landroid/view/Surface;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-static {v1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$fgetmAlphaSurface(Lcom/miui/miwallpaper/MiuiWallpaperManager;)Landroid/view/Surface;

    move-result-object v1

    invoke-static {p1, p2, v1, v0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$msetLockscreenVideoSurface(Lcom/miui/miwallpaper/MiuiWallpaperManager;Landroid/view/Surface;Landroid/view/Surface;Z)V

    .line 351
    iget-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-static {p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$fgetmAlphaVisible(Lcom/miui/miwallpaper/MiuiWallpaperManager;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->setLockscreenVideoSurfaceVisible(Z)V

    .line 353
    :cond_0
    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->notifyInitComplete()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected: componentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiWallpaperManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$fputmServiceConnected(Lcom/miui/miwallpaper/MiuiWallpaperManager;Z)V

    .line 380
    iget-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-static {p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$mremoveResetCallback(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    .line 382
    iget-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-static {p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$munbindService(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    .line 383
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    const/4 p1, 0x1

    const-string v0, "Disconnected"

    invoke-static {p0, p1, v0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->-$$Nest$mbindService(Lcom/miui/miwallpaper/MiuiWallpaperManager;ZLjava/lang/String;)V

    return-void
.end method
