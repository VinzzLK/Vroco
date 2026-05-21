.class final enum Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;
.super Ljava/lang/Enum;
.source "HideAppsSetPasswordContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RightButtonMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

.field public static final enum Confirm:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

.field public static final enum ConfirmDisabled:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

.field public static final enum Continue:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

.field public static final enum ContinueDisabled:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

.field public static final enum Gone:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

.field public static final enum Ok:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;


# instance fields
.field private enabled:Z

.field private text:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 443
    new-instance v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    const-string v1, "Continue"

    const/4 v2, 0x0

    const v3, 0x7f1002b3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;->Continue:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    .line 444
    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    const-string v5, "ContinueDisabled"

    invoke-direct {v1, v5, v4, v3, v2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;->ContinueDisabled:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    .line 445
    new-instance v3, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    const-string v5, "Confirm"

    const/4 v6, 0x2

    const v7, 0x7f1002b2

    invoke-direct {v3, v5, v6, v7, v4}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v3, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;->Confirm:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    .line 446
    new-instance v5, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    const-string v8, "ConfirmDisabled"

    const/4 v9, 0x3

    invoke-direct {v5, v8, v9, v7, v2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v5, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;->ConfirmDisabled:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    .line 447
    new-instance v7, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    const-string v8, "Ok"

    const/4 v10, 0x4

    const v11, 0x104000a

    invoke-direct {v7, v8, v10, v11, v4}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v7, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;->Ok:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    .line 448
    new-instance v8, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    const-string v11, "Gone"

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-direct {v8, v11, v12, v13, v2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v8, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;->Gone:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v9

    aput-object v7, v11, v10

    aput-object v8, v11, v12

    .line 442
    sput-object v11, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;->$VALUES:[Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 450
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 451
    iput p3, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;->text:I

    .line 452
    iput-boolean p4, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;->enabled:Z

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;)I
    .locals 0

    .line 442
    iget p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;->text:I

    return p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;)Z
    .locals 0

    .line 442
    iget-boolean p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;->enabled:Z

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;
    .locals 1

    .line 442
    const-class v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;
    .locals 1

    .line 442
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;->$VALUES:[Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    return-object v0
.end method


# virtual methods
.method public setText(I)V
    .locals 0

    .line 456
    iput p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;->text:I

    return-void
.end method
