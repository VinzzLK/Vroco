.class Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator$1;
.super Ljava/lang/Object;
.source "MultiSeekBarIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->createAssistantPoint()Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

.field final synthetic val$assistantPoint:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;Landroid/widget/ImageView;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator$1;->this$0:Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    iput-object p2, p0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator$1;->val$assistantPoint:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator$1;->this$0:Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    invoke-static {p1}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->access$000(Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;)Lcom/miui/home/launcher/ScreenView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 88
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 89
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->openMinusOne()V

    goto :goto_0

    .line 90
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAssistantOverlayController()Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 91
    iget-object p0, p0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator$1;->val$assistantPoint:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 92
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    .line 93
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAssistantOverlayController()Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->showOverlay(Z)V

    :cond_2
    :goto_0
    return-void
.end method
