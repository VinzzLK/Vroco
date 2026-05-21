.class public final enum Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;
.super Ljava/lang/Enum;
.source "HideAppsUnlockContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;

.field public static final enum NeedToUnlock:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;

.field public static final enum NeedToUnlockWrongByFingerPrint:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;

.field public static final enum NeedToUnlockWrongByPattern:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 60
    new-instance v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;

    const-string v1, "NeedToUnlock"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;->NeedToUnlock:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;

    .line 61
    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;

    const-string v3, "NeedToUnlockWrongByPattern"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;->NeedToUnlockWrongByPattern:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;

    .line 62
    new-instance v3, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;

    const-string v5, "NeedToUnlockWrongByFingerPrint"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;->NeedToUnlockWrongByFingerPrint:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 59
    sput-object v5, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;->$VALUES:[Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;
    .locals 1

    .line 59
    const-class v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;
    .locals 1

    .line 59
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;->$VALUES:[Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;

    return-object v0
.end method
