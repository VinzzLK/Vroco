.class Lcom/miui/home/launcher/ScreenView$3;
.super Lmiuix/animation/listener/TransitionListener;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ScreenView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ScreenView;)V
    .locals 0

    .line 2001
    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView$3;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 0

    .line 2004
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .locals 2

    .line 2024
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 2025
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$3;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {p1}, Lcom/miui/home/launcher/ScreenView;->access$1000(Lcom/miui/home/launcher/ScreenView;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCancel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$3;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->onScrollXAnimationEnd()V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 2

    .line 2031
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 2032
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$3;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {p1}, Lcom/miui/home/launcher/ScreenView;->access$1000(Lcom/miui/home/launcher/ScreenView;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onComplete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$3;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->onScrollXAnimationEnd()V

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 2009
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 2010
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$3;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {p1}, Lcom/miui/home/launcher/ScreenView;->access$800(Lcom/miui/home/launcher/ScreenView;)Lmiuix/animation/property/ViewProperty;

    move-result-object p1

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findBy(Ljava/util/Collection;Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2016
    :cond_0
    iget p2, p1, Lmiuix/animation/listener/UpdateInfo;->frameCount:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 2017
    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView$3;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->invalidate()V

    .line 2019
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$3;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/ScreenView;->access$902(Lcom/miui/home/launcher/ScreenView;F)F

    return-void
.end method
