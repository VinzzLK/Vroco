.class Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$2;
.super Ljava/lang/Object;
.source "ShortcutMenuBlurAnimationHelper.java"

# interfaces
.implements Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->startBlurAnim(Landroid/view/View;ZLcom/miui/home/launcher/widget/DragContainerLayout;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;

.field final synthetic val$dragContainerLayout:Lcom/miui/home/launcher/widget/DragContainerLayout;

.field final synthetic val$maxBlurRadius:F

.field final synthetic val$maxScale:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;FFLandroid/view/View;Lcom/miui/home/launcher/widget/DragContainerLayout;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$2;->this$0:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;

    iput p2, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$2;->val$maxBlurRadius:F

    iput p3, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$2;->val$maxScale:F

    iput-object p4, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$2;->val$view:Landroid/view/View;

    iput-object p5, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$2;->val$dragContainerLayout:Lcom/miui/home/launcher/widget/DragContainerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(F)V
    .locals 9

    .line 78
    iget v0, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$2;->val$maxBlurRadius:F

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 79
    iget v0, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$2;->val$maxScale:F

    mul-float v4, v0, p1

    const/4 v0, 0x0

    .line 80
    invoke-static {v0, p1}, Lcom/miui/home/launcher/common/BlurUtilities;->multiplyAlphaWithColor(IF)I

    move-result v5

    .line 81
    invoke-static {v0, p1}, Lcom/miui/home/launcher/common/BlurUtilities;->multiplyAlphaWithColor(IF)I

    move-result v7

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$2;->this$0:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->access$200(Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;F)V

    .line 83
    iget-object v1, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$2;->this$0:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;

    iget-object v2, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$2;->val$view:Landroid/view/View;

    const/16 v6, 0x64

    const/16 v8, 0x6a

    invoke-static/range {v1 .. v8}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->access$300(Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;Landroid/view/View;IFIIII)V

    .line 84
    iget-object p1, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$2;->this$0:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;

    invoke-static {p1}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->access$000(Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$2;->this$0:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;

    iget-object p0, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$2;->val$dragContainerLayout:Lcom/miui/home/launcher/widget/DragContainerLayout;

    invoke-static {p1}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->access$400(Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;)Ljava/util/function/Consumer;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->access$100(Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;Lcom/miui/home/launcher/widget/DragContainerLayout;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method
