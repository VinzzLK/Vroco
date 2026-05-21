.class public final Lcom/miui/home/launcher/anim/NewInstallLightAnim$start$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NewInstallLightAnim.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/anim/NewInstallLightAnim;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/anim/NewInstallLightAnim;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/anim/NewInstallLightAnim;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim$start$2$1;->this$0:Lcom/miui/home/launcher/anim/NewInstallLightAnim;

    .line 70
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim$start$2$1;->this$0:Lcom/miui/home/launcher/anim/NewInstallLightAnim;

    invoke-static {p1}, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->access$release(Lcom/miui/home/launcher/anim/NewInstallLightAnim;)V

    .line 73
    iget-object p0, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim$start$2$1;->this$0:Lcom/miui/home/launcher/anim/NewInstallLightAnim;

    invoke-static {p0}, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->access$getMAnimFinishCallback$p(Lcom/miui/home/launcher/anim/NewInstallLightAnim;)Ljava/lang/Runnable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
