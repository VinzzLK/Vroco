.class Lmiuix/bottomsheet/BottomSheetModal$6;
.super Ljava/lang/Object;
.source "BottomSheetModal.java"

# interfaces
.implements Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/bottomsheet/BottomSheetModal;->doShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/bottomsheet/BottomSheetModal;


# direct methods
.method constructor <init>(Lmiuix/bottomsheet/BottomSheetModal;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetModal$6;->this$0:Lmiuix/bottomsheet/BottomSheetModal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 1

    .line 300
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal$6;->this$0:Lmiuix/bottomsheet/BottomSheetModal;

    invoke-static {v0}, Lmiuix/bottomsheet/BottomSheetModal;->access$1200(Lmiuix/bottomsheet/BottomSheetModal;)Lmiuix/bottomsheet/BottomSheetModal$OnShowListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal$6;->this$0:Lmiuix/bottomsheet/BottomSheetModal;

    invoke-static {v0}, Lmiuix/bottomsheet/BottomSheetModal;->access$100(Lmiuix/bottomsheet/BottomSheetModal;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal$6;->this$0:Lmiuix/bottomsheet/BottomSheetModal;

    invoke-static {v0}, Lmiuix/bottomsheet/BottomSheetModal;->access$1200(Lmiuix/bottomsheet/BottomSheetModal;)Lmiuix/bottomsheet/BottomSheetModal$OnShowListener;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/bottomsheet/BottomSheetModal$OnShowListener;->onShow()V

    .line 303
    :cond_0
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal$6;->this$0:Lmiuix/bottomsheet/BottomSheetModal;

    invoke-static {p0}, Lmiuix/bottomsheet/BottomSheetModal;->access$1500(Lmiuix/bottomsheet/BottomSheetModal;)Lmiuix/bottomsheet/BottomSheetDragHandleView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .line 289
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal$6;->this$0:Lmiuix/bottomsheet/BottomSheetModal;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/bottomsheet/BottomSheetModal;->access$302(Lmiuix/bottomsheet/BottomSheetModal;Z)Z

    .line 290
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal$6;->this$0:Lmiuix/bottomsheet/BottomSheetModal;

    invoke-static {v0}, Lmiuix/bottomsheet/BottomSheetModal;->access$1400(Lmiuix/bottomsheet/BottomSheetModal;)Landroidx/activity/OnBackPressedCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal$6;->this$0:Lmiuix/bottomsheet/BottomSheetModal;

    invoke-static {v0}, Lmiuix/bottomsheet/BottomSheetModal;->access$1400(Lmiuix/bottomsheet/BottomSheetModal;)Landroidx/activity/OnBackPressedCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 293
    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal$6;->this$0:Lmiuix/bottomsheet/BottomSheetModal;

    invoke-static {v0}, Lmiuix/bottomsheet/BottomSheetModal;->access$1100(Lmiuix/bottomsheet/BottomSheetModal;)Lmiuix/bottomsheet/BottomSheetModal$OnShowStartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 294
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal$6;->this$0:Lmiuix/bottomsheet/BottomSheetModal;

    invoke-static {p0}, Lmiuix/bottomsheet/BottomSheetModal;->access$1100(Lmiuix/bottomsheet/BottomSheetModal;)Lmiuix/bottomsheet/BottomSheetModal$OnShowStartListener;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/bottomsheet/BottomSheetModal$OnShowStartListener;->onShowStart()V

    :cond_1
    return-void
.end method
