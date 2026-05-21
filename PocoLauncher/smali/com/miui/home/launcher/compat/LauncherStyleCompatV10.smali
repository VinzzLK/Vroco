.class Lcom/miui/home/launcher/compat/LauncherStyleCompatV10;
.super Lcom/miui/home/launcher/compat/LauncherStyleCompat;
.source "LauncherStyleCompatV10.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/LauncherStyleCompat;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/miui/home/launcher/compat/LauncherStyleCompatV10;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getLauncherDialogPaddingBottom()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getLauncherDialogPaddingTop()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
