.class Lcom/miui/home/recents/anim/ConnectAnimManager$2;
.super Ljava/lang/Object;
.source "ConnectAnimManager.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/ConnectAnimManager;->connectRecentAnimForOpening(Landroid/graphics/RectF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/anim/ConnectAnimManager;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$2;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 228
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string p1, "ConnectAnimManager"

    const-string v0, "connectRecentAnimForOpening onAnimationCancel"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 2

    const-string v0, "ConnectAnimManager"

    const-string v1, "connectRecentAnimForOpening onAnimationEnd"

    .line 234
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne p1, v0, :cond_0

    .line 236
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$2;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$300(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallback()V

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$2;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$300(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setConnectAnimRunning(Z)V

    .line 239
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$2;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$000(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/views/FloatingIconView;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 240
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$2;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$000(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/views/FloatingIconView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/FloatingIconView;->setNeedRecycle(Z)V

    .line 241
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$2;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$000(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/views/FloatingIconView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/FloatingIconView;->forceToEnd()V

    .line 243
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$2;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$400(Lcom/miui/home/recents/anim/ConnectAnimManager;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 244
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$2;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$500(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 245
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$2;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$500(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/FloatingIconLayer;->release()V

    .line 246
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$2;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$200(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 247
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$2;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$200(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object p0

    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onLaunchAppAnimEnd()V

    goto :goto_0

    .line 249
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$2;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$600(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/views/FloatingIconView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 250
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$2;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$600(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/views/FloatingIconView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/FloatingIconView;->setNeedRecycle(Z)V

    .line 251
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$2;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$600(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/views/FloatingIconView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->recycle()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    const-string p0, "ConnectAnimManager"

    const-string p1, "connectRecentAnimForOpening onAnimationStart"

    .line 222
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
