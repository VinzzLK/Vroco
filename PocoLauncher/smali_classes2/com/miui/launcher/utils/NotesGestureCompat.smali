.class public Lcom/miui/launcher/utils/NotesGestureCompat;
.super Ljava/lang/Object;
.source "NotesGestureCompat.java"


# static fields
.field private static final PACKAGE_MI_NOTES:Ljava/lang/String; = "com.miui.notes"

.field private static final SUPPORT_GESTURE_HEIGHT_EXPANSION_MIN_NOTES_VERSION:I = 0x4e2

.field private static sCurrentNotesVersion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 34
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 35
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 36
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method private static getNotesVersionCode(Landroid/content/Context;)I
    .locals 1

    const-string v0, "com.miui.notes"

    .line 13
    invoke-static {p0, v0}, Lcom/miui/launcher/utils/NotesGestureCompat;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static notesLayerAboveGestureLayer()Z
    .locals 2

    .line 24
    sget v0, Lcom/miui/launcher/utils/NotesGestureCompat;->sCurrentNotesVersion:I

    const/16 v1, 0x4e2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static supportsGestureHeightExpansion()Z
    .locals 3

    .line 28
    sget v0, Lcom/miui/launcher/utils/NotesGestureCompat;->sCurrentNotesVersion:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    .line 29
    invoke-static {}, Lcom/miui/launcher/utils/NotesGestureCompat;->notesLayerAboveGestureLayer()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public static updateNotesVersionCode(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-static {p0}, Lcom/miui/launcher/utils/NotesGestureCompat;->getNotesVersionCode(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/miui/launcher/utils/NotesGestureCompat;->sCurrentNotesVersion:I

    return-void
.end method
