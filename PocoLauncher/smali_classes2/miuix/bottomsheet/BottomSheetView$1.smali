.class Lmiuix/bottomsheet/BottomSheetView$1;
.super Ljava/lang/Object;
.source "BottomSheetView.java"

# interfaces
.implements Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/bottomsheet/BottomSheetView;->initBlurHelper(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/bottomsheet/BottomSheetView;


# direct methods
.method constructor <init>(Lmiuix/bottomsheet/BottomSheetView;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetView$1;->this$0:Lmiuix/bottomsheet/BottomSheetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlurApplyStateChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetView$1;->this$0:Lmiuix/bottomsheet/BottomSheetView;

    invoke-static {p1}, Lmiuix/bottomsheet/BottomSheetView;->access$100(Lmiuix/bottomsheet/BottomSheetView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetView$1;->this$0:Lmiuix/bottomsheet/BottomSheetView;

    invoke-static {p1}, Lmiuix/bottomsheet/BottomSheetView;->access$000(Lmiuix/bottomsheet/BottomSheetView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    :goto_0
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetView$1;->this$0:Lmiuix/bottomsheet/BottomSheetView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public onBlurEnableStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onCreateBlurParams(Lmiuix/view/MiuiBlurUiHelper;)V
    .locals 3

    .line 121
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetView$1;->this$0:Lmiuix/bottomsheet/BottomSheetView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/bottomsheet/R$attr;->isLightTheme:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    sget-object v1, Lmiuix/theme/token/BlurToken$BlendColor$Light;->EXTRA_HEAVY:[I

    goto :goto_0

    :cond_0
    sget-object v1, Lmiuix/theme/token/BlurToken$BlendColor$Dark;->HEAVY:[I

    .line 123
    :goto_0
    iget-object v2, p0, Lmiuix/bottomsheet/BottomSheetView$1;->this$0:Lmiuix/bottomsheet/BottomSheetView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetView$1;->this$0:Lmiuix/bottomsheet/BottomSheetView;

    invoke-static {p0}, Lmiuix/bottomsheet/BottomSheetView;->access$000(Lmiuix/bottomsheet/BottomSheetView;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {v2, p0, v1}, Lmiuix/view/MiuiBlurUiHelper;->getFinalBlendColorForViewByBackgroundColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;[I)[I

    move-result-object p0

    if-eqz v0, :cond_1

    .line 126
    sget-object v0, Lmiuix/theme/token/BlurToken$BlendMode$Light;->DEFAULT:[I

    goto :goto_1

    :cond_1
    sget-object v0, Lmiuix/theme/token/BlurToken$BlendMode$Dark;->DEFAULT:[I

    :goto_1
    const/16 v1, 0x64

    .line 124
    invoke-virtual {p1, p0, v0, v1}, Lmiuix/view/MiuiBlurUiHelper;->setBlurParams([I[II)V

    return-void
.end method
