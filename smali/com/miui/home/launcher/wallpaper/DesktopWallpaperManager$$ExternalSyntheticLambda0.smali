.class public final synthetic Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/ItemInfo;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/miui/home/launcher/gadget/ColorUpdatable;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ItemInfo;IILcom/miui/home/launcher/gadget/ColorUpdatable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/ItemInfo;

    iput p2, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$$ExternalSyntheticLambda0;->f$3:Lcom/miui/home/launcher/gadget/ColorUpdatable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/ItemInfo;

    iget v1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$$ExternalSyntheticLambda0;->f$2:I

    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$$ExternalSyntheticLambda0;->f$3:Lcom/miui/home/launcher/gadget/ColorUpdatable;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->$r8$lambda$vpQO7jFh_vyaUbsQUdDknu05q6Y(Lcom/miui/home/launcher/ItemInfo;IILcom/miui/home/launcher/gadget/ColorUpdatable;Ljava/lang/Boolean;)V

    return-void
.end method
