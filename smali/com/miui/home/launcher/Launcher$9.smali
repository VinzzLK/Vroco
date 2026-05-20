.class Lcom/miui/home/launcher/Launcher$9;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 2897
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$9;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 2905
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$9;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$2200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2906
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$9;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$2200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->resetAdapter()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
