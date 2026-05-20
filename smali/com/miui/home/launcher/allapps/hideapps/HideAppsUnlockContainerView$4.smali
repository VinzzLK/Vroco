.class synthetic Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$4;
.super Ljava/lang/Object;
.source "HideAppsUnlockContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$miui$home$launcher$allapps$hideapps$HideAppsUnlockContainerView$Stage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 315
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;->values()[Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$4;->$SwitchMap$com$miui$home$launcher$allapps$hideapps$HideAppsUnlockContainerView$Stage:[I

    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;->NeedToUnlock:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$4;->$SwitchMap$com$miui$home$launcher$allapps$hideapps$HideAppsUnlockContainerView$Stage:[I

    sget-object v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;->NeedToUnlockWrongByPattern:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$4;->$SwitchMap$com$miui$home$launcher$allapps$hideapps$HideAppsUnlockContainerView$Stage:[I

    sget-object v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;->NeedToUnlockWrongByFingerPrint:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
