.class Lcom/miui/home/launcher/LauncherMenu$1;
.super Ljava/lang/Object;
.source "LauncherMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherMenu;


# direct methods
.method public static synthetic $r8$lambda$D3AGfzB47XLM-wJ7vqv82i4ESVo(Lcom/miui/home/launcher/LauncherMenu$1;Ljava/lang/String;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherMenu$1;->lambda$onItemSelected$1(Ljava/lang/String;Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GnWMjuTn9zWl9plC8a-9p6zpZKs(Lcom/miui/home/launcher/LauncherMenu$1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherMenu$1;->lambda$onItemSelected$0(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/LauncherMenu;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherMenu$1;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemSelected$0(Ljava/lang/String;)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu$1;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherMenu;->access$300(Lcom/miui/home/launcher/LauncherMenu;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onItemSelected$1(Ljava/lang/String;Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 73
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getLauncherMenuHelper()Lcom/miui/home/launcher/LauncherMenuHelper;

    move-result-object p2

    new-instance v0, Lcom/miui/home/launcher/LauncherMenu$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/LauncherMenu$1$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/LauncherMenu$1;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/LauncherMenuHelper;->hideBottomSheetMenu(Lcom/miui/home/launcher/LauncherMenu$DismissCallBack;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 68
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherMenu$1;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherMenu;->access$000(Lcom/miui/home/launcher/LauncherMenu;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherMenu$1;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherMenu;->access$100(Lcom/miui/home/launcher/LauncherMenu;)[Ljava/lang/CharSequence;

    move-result-object p1

    long-to-int p2, p4

    aget-object p1, p1, p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherMenu$1;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 73
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherMenu$1;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    new-instance p3, Lcom/miui/home/launcher/LauncherMenu$1$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lcom/miui/home/launcher/LauncherMenu$1$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/LauncherMenu$1;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/miui/home/launcher/LauncherMenu;->access$200(Lcom/miui/home/launcher/LauncherMenu;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherMenu$1;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherMenu;->access$300(Lcom/miui/home/launcher/LauncherMenu;Ljava/lang/String;)V

    .line 77
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu$1;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherMenu;->access$400(Lcom/miui/home/launcher/LauncherMenu;Ljava/lang/String;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
