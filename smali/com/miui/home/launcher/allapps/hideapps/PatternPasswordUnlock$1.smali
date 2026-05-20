.class Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock$1;
.super Ljava/lang/Object;
.source "PatternPasswordUnlock.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPatternCleared()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->access$200(Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;)Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;->onPatternDrawEnd()V

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->access$100(Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;)Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->access$000(Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->access$200(Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;)Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;->onPatternDrawEnd()V

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->access$300(Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->access$200(Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;)Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternUtils;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;->getDetectedPassword(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;

    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternUtils;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->access$400(Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPatternStart()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->access$100(Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;)Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;

    invoke-static {v1}, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->access$000(Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->access$200(Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;)Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;->onPatternDrawStart()V

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->access$300(Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->access$200(Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;)Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;->passwordInProgress(Landroid/text/Editable;)V

    :cond_0
    return-void
.end method
