.class Lcom/miui/home/launcher/LayoutPreviewView$CustomAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "LayoutPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LayoutPreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomAccessibilityDelegate"
.end annotation


# instance fields
.field private final mResultViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/LayoutPreviewBorder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/LayoutPreviewBorder;",
            ">;)V"
        }
    .end annotation

    .line 331
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 332
    iput-object p1, p0, Lcom/miui/home/launcher/LayoutPreviewView$CustomAccessibilityDelegate;->mResultViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 337
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 338
    iget-object p0, p0, Lcom/miui/home/launcher/LayoutPreviewView$CustomAccessibilityDelegate;->mResultViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/LayoutPreviewBorder;

    .line 339
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    if-eqz p0, :cond_4

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const v1, 0x7f0a00d3

    .line 343
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 344
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 345
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    const-string v2, "android.widget.Button"

    .line 348
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 349
    invoke-virtual {p0}, Lcom/miui/home/launcher/LayoutPreviewBorder;->getCurType()Lcom/miui/home/launcher/anim/BackgroundType;

    move-result-object p0

    .line 350
    sget-object p2, Lcom/miui/home/launcher/anim/BackgroundType;->SELECT:Lcom/miui/home/launcher/anim/BackgroundType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p0, p2, :cond_3

    const p0, 0x7f100068

    new-array p2, v3, [Ljava/lang/Object;

    aput-object v1, p2, v2

    .line 351
    invoke-virtual {v0, p0, p2}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const p0, 0x7f10008b

    new-array p2, v3, [Ljava/lang/Object;

    aput-object v1, p2, v2

    .line 352
    invoke-virtual {v0, p0, p2}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 353
    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    return-void
.end method
