.class Lmiuix/bottomsheet/BottomSheetModal$3;
.super Ljava/lang/Object;
.source "BottomSheetModal.java"

# interfaces
.implements Lmiuix/bottomsheet/BottomSheetBehavior$ReleaseAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/bottomsheet/BottomSheetModal;->ensureContainerAndBehavior()Landroid/widget/FrameLayout;
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

    .line 186
    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetModal$3;->this$0:Lmiuix/bottomsheet/BottomSheetModal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(I)V
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 203
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal$3;->this$0:Lmiuix/bottomsheet/BottomSheetModal;

    invoke-static {p0}, Lmiuix/bottomsheet/BottomSheetModal;->access$700(Lmiuix/bottomsheet/BottomSheetModal;)V

    :cond_0
    return-void
.end method

.method public onStart(I)V
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 190
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetModal$3;->this$0:Lmiuix/bottomsheet/BottomSheetModal;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiuix/bottomsheet/BottomSheetModal;->access$302(Lmiuix/bottomsheet/BottomSheetModal;Z)Z

    .line 191
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetModal$3;->this$0:Lmiuix/bottomsheet/BottomSheetModal;

    invoke-static {p1}, Lmiuix/bottomsheet/BottomSheetModal;->access$400(Lmiuix/bottomsheet/BottomSheetModal;)Lmiuix/bottomsheet/BottomSheetModal$OnDismissStartListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetModal$3;->this$0:Lmiuix/bottomsheet/BottomSheetModal;

    invoke-static {p1}, Lmiuix/bottomsheet/BottomSheetModal;->access$400(Lmiuix/bottomsheet/BottomSheetModal;)Lmiuix/bottomsheet/BottomSheetModal$OnDismissStartListener;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/bottomsheet/BottomSheetModal$OnDismissStartListener;->onDismissStart()V

    .line 194
    :cond_0
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetModal$3;->this$0:Lmiuix/bottomsheet/BottomSheetModal;

    invoke-static {p1}, Lmiuix/bottomsheet/BottomSheetModal;->access$500(Lmiuix/bottomsheet/BottomSheetModal;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 195
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal$3;->this$0:Lmiuix/bottomsheet/BottomSheetModal;

    invoke-static {p0}, Lmiuix/bottomsheet/BottomSheetModal;->access$600(Lmiuix/bottomsheet/BottomSheetModal;)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/bottomsheet/BottomSheetModal$DimAnimator;->dismiss(Landroid/view/View;)V

    :cond_1
    return-void
.end method
