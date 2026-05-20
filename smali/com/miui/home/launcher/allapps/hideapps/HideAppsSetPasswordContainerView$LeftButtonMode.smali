.class final enum Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;
.super Ljava/lang/Enum;
.source "HideAppsSetPasswordContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LeftButtonMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

.field public static final enum Cancel:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

.field public static final enum CancelDisable:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

.field public static final enum Gone:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

.field public static final enum Retry:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

.field public static final enum RetryDisabled:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;


# instance fields
.field final enabled:Z

.field final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 427
    new-instance v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

    const-string v1, "Cancel"

    const/4 v2, 0x0

    const/high16 v3, 0x1040000

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;->Cancel:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

    .line 428
    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

    const-string v5, "CancelDisable"

    invoke-direct {v1, v5, v4, v3, v2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;->CancelDisable:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

    .line 429
    new-instance v3, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

    const-string v5, "Retry"

    const/4 v6, 0x2

    const v7, 0x7f1002bb

    invoke-direct {v3, v5, v6, v7, v4}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v3, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;->Retry:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

    .line 430
    new-instance v5, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

    const-string v8, "RetryDisabled"

    const/4 v9, 0x3

    invoke-direct {v5, v8, v9, v7, v2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v5, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;->RetryDisabled:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

    .line 431
    new-instance v7, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

    const-string v8, "Gone"

    const/4 v10, 0x4

    const/4 v11, -0x1

    invoke-direct {v7, v8, v10, v11, v2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v7, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;->Gone:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

    const/4 v8, 0x5

    new-array v8, v8, [Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    aput-object v5, v8, v9

    aput-object v7, v8, v10

    .line 426
    sput-object v8, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;->$VALUES:[Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 433
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 434
    iput p3, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;->text:I

    .line 435
    iput-boolean p4, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;->enabled:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;
    .locals 1

    .line 426
    const-class v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;
    .locals 1

    .line 426
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;->$VALUES:[Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

    return-object v0
.end method
