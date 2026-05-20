.class Lmiuix/bottomsheet/BottomSheetModal$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "BottomSheetModal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/bottomsheet/BottomSheetModal;-><init>(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/bottomsheet/BottomSheetModal;


# direct methods
.method constructor <init>(Lmiuix/bottomsheet/BottomSheetModal;Z)V
    .locals 0

    .line 75
    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetModal$1;->this$0:Lmiuix/bottomsheet/BottomSheetModal;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    .line 79
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal$1;->this$0:Lmiuix/bottomsheet/BottomSheetModal;

    invoke-static {v0}, Lmiuix/bottomsheet/BottomSheetModal;->access$000(Lmiuix/bottomsheet/BottomSheetModal;)Lmiuix/bottomsheet/BottomSheetModal$OnBackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal$1;->this$0:Lmiuix/bottomsheet/BottomSheetModal;

    invoke-static {v0}, Lmiuix/bottomsheet/BottomSheetModal;->access$000(Lmiuix/bottomsheet/BottomSheetModal;)Lmiuix/bottomsheet/BottomSheetModal$OnBackListener;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/bottomsheet/BottomSheetModal$OnBackListener;->onBack()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal$1;->this$0:Lmiuix/bottomsheet/BottomSheetModal;

    invoke-static {v0}, Lmiuix/bottomsheet/BottomSheetModal;->access$100(Lmiuix/bottomsheet/BottomSheetModal;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal$1;->this$0:Lmiuix/bottomsheet/BottomSheetModal;

    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetModal;->dismiss()V

    :cond_1
    return-void
.end method
