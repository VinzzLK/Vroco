.class Lcom/miui/home/launcher/uninstall/BoomAnimHelper$2;
.super Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$BaseBoomTransitionListener;
.source "BoomAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->doBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$animEndRunnable:Ljava/lang/Runnable;

.field final synthetic val$lastTag:Ljava/lang/Object;

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$volume:F


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;Lcom/miui/home/launcher/Launcher;FLjava/lang/Object;Ljava/lang/Runnable;)V
    .locals 0

    .line 151
    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iput p3, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$2;->val$volume:F

    iput-object p4, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$2;->val$lastTag:Ljava/lang/Object;

    iput-object p5, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$2;->val$animEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$BaseBoomTransitionListener;-><init>(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 0

    .line 155
    invoke-super {p0, p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$BaseBoomTransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 156
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performBoom()V

    .line 157
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iget p0, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$2;->val$volume:F

    invoke-static {p1, p0}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->access$000(Lcom/miui/home/launcher/Launcher;F)V

    const/4 p0, 0x1

    .line 158
    invoke-static {p0}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->access$102(Z)Z

    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .locals 1

    .line 172
    invoke-super {p0, p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$BaseBoomTransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$2;->val$lastTag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 174
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$2;->val$animEndRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    .line 175
    invoke-static {p0}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->access$102(Z)Z

    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 163
    invoke-super {p0, p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$BaseBoomTransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$2;->val$lastTag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 165
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$2;->val$animEndRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    .line 166
    invoke-static {p0}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->access$102(Z)Z

    :cond_0
    return-void
.end method
