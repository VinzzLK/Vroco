.class public final synthetic Lmiuix/bottomsheet/BottomSheetBehavior$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lmiuix/bottomsheet/BottomSheetBehavior;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lmiuix/bottomsheet/BottomSheetBehavior;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$$ExternalSyntheticLambda1;->f$0:Lmiuix/bottomsheet/BottomSheetBehavior;

    iput-object p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    iput-boolean p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lmiuix/internal/util/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 6

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior$$ExternalSyntheticLambda1;->f$0:Lmiuix/bottomsheet/BottomSheetBehavior;

    iget-object v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    iget-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior$$ExternalSyntheticLambda1;->f$2:Z

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lmiuix/bottomsheet/BottomSheetBehavior;->$r8$lambda$2lfj7OP3gUScwOG5mpCaql_N-kw(Lmiuix/bottomsheet/BottomSheetBehavior;Landroid/view/View;ZLandroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lmiuix/internal/util/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method
