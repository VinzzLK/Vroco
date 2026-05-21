.class public final enum Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;
.super Ljava/lang/Enum;
.source "HideAppsSetPasswordContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

.field public static final enum ChoiceConfirmed:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

.field public static final enum ChoiceTooShort:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

.field public static final enum ConfirmWrong:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

.field public static final enum FirstChoiceValid:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

.field public static final enum Introduction:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

.field public static final enum NeedToConfirm:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;


# instance fields
.field final footerMessage:I

.field headerMessage:I

.field leftMode:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

.field final patternEnabled:Z

.field rightMode:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 377
    new-instance v8, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    sget-object v9, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;->Gone:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

    sget-object v10, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;->Gone:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const v3, 0x7f1002ba

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v0, v8

    move-object v4, v9

    move-object v5, v10

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;-><init>(Ljava/lang/String;IILcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;IZ)V

    sput-object v8, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->Introduction:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    .line 379
    new-instance v11, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    const-string v1, "ChoiceTooShort"

    const/4 v2, 0x1

    const v3, 0x7f0e0013

    move-object v0, v11

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;-><init>(Ljava/lang/String;IILcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;IZ)V

    sput-object v11, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->ChoiceTooShort:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    .line 383
    new-instance v12, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    const-string v1, "FirstChoiceValid"

    const/4 v2, 0x2

    const v3, 0x7f1002b8

    const/4 v7, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;-><init>(Ljava/lang/String;IILcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;IZ)V

    sput-object v12, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->FirstChoiceValid:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    .line 386
    new-instance v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    sget-object v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;->Retry:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

    sget-object v2, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;->ConfirmDisabled:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    const-string v14, "NeedToConfirm"

    const/4 v15, 0x3

    const v16, 0x7f1002b5

    const/16 v19, -0x1

    const/16 v20, 0x1

    move-object v13, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    invoke-direct/range {v13 .. v20}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;-><init>(Ljava/lang/String;IILcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;IZ)V

    sput-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->NeedToConfirm:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    .line 390
    new-instance v3, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    const-string v14, "ConfirmWrong"

    const/4 v15, 0x4

    const v16, 0x7f1002b6

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;-><init>(Ljava/lang/String;IILcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;IZ)V

    sput-object v3, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->ConfirmWrong:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    .line 394
    new-instance v2, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    sget-object v18, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;->Confirm:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    const-string v14, "ChoiceConfirmed"

    const/4 v15, 0x5

    const v16, 0x7f1002b7

    const/16 v20, 0x0

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;-><init>(Ljava/lang/String;IILcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;IZ)V

    sput-object v2, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->ChoiceConfirmed:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    const/4 v4, 0x0

    aput-object v8, v1, v4

    const/4 v4, 0x1

    aput-object v11, v1, v4

    const/4 v4, 0x2

    aput-object v12, v1, v4

    const/4 v4, 0x3

    aput-object v0, v1, v4

    const/4 v0, 0x4

    aput-object v3, v1, v0

    const/4 v0, 0x5

    aput-object v2, v1, v0

    .line 376
    sput-object v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->$VALUES:[Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;",
            "Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;",
            "IZ)V"
        }
    .end annotation

    .line 399
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 400
    iput p3, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->headerMessage:I

    .line 401
    iput-object p4, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->leftMode:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

    .line 402
    iput-object p5, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->rightMode:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    .line 403
    iput p6, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->footerMessage:I

    .line 404
    iput-boolean p7, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->patternEnabled:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;
    .locals 1

    .line 376
    const-class v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;
    .locals 1

    .line 376
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->$VALUES:[Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    return-object v0
.end method


# virtual methods
.method public setHeaderMessage(I)V
    .locals 0

    .line 408
    iput p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->headerMessage:I

    return-void
.end method

.method public setLeftMode(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->leftMode:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$LeftButtonMode;

    return-void
.end method

.method public setRightMode(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->rightMode:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$RightButtonMode;

    return-void
.end method
