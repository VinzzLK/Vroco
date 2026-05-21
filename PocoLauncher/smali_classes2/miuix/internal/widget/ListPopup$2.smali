.class Lmiuix/internal/widget/ListPopup$2;
.super Ljava/lang/Object;
.source "ListPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/internal/widget/ListPopup;->configurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/internal/widget/ListPopup;


# direct methods
.method constructor <init>(Lmiuix/internal/widget/ListPopup;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 230
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    iget-object v0, v0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 233
    :cond_0
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-static {v0}, Lmiuix/internal/widget/ListPopup;->access$500(Lmiuix/internal/widget/ListPopup;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-static {v0}, Lmiuix/internal/widget/ListPopup;->access$500(Lmiuix/internal/widget/ListPopup;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 234
    :goto_0
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup$2;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-static {p0, v0}, Lmiuix/internal/widget/ListPopup;->access$200(Lmiuix/internal/widget/ListPopup;Landroid/view/View;)V

    :cond_2
    :goto_1
    return-void
.end method
