.class Lmiuix/internal/widget/ListPopup$1;
.super Landroid/database/DataSetObserver;
.source "ListPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/widget/ListPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/internal/widget/ListPopup;


# direct methods
.method public static synthetic $r8$lambda$RK8tfszd9sLeMqJukHkW8fVAq1c(Lmiuix/internal/widget/ListPopup$1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup$1;->lambda$onChanged$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lmiuix/internal/widget/ListPopup;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onChanged$0(Landroid/view/View;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    iget-object v0, v0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-static {p0, p1}, Lmiuix/internal/widget/ListPopup;->access$200(Lmiuix/internal/widget/ListPopup;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 106
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-static {v0}, Lmiuix/internal/widget/ListPopup;->access$000(Lmiuix/internal/widget/ListPopup;)Lmiuix/internal/widget/ListPopup$ContentSize;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    .line 107
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-static {v0}, Lmiuix/internal/widget/ListPopup;->access$100(Lmiuix/internal/widget/ListPopup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v1, Lmiuix/internal/widget/ListPopup$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lmiuix/internal/widget/ListPopup$1$$ExternalSyntheticLambda0;-><init>(Lmiuix/internal/widget/ListPopup$1;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
