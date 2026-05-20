.class Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold$1;
.super Ljava/lang/Object;
.source "UserPresentAnimationCompatFold.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    const-string v0, "UserPresentAnimationCompatFold"

    const-string v1, "mDragLayerViewLayoutListener : prepareAnimation and showAnimation !"

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;

    invoke-static {v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->access$000(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;)V

    .line 37
    iget-object p0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;->showAnimation()V

    return-void
.end method
