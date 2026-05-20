.class public final Lcom/miui/home/recents/anim/WallpaperElement$mWallpaperScaleObserver$1;
.super Landroid/database/ContentObserver;
.source "WallpaperElement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/WallpaperElement;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/anim/WallpaperElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/anim/WallpaperElement<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/home/recents/anim/WallpaperElement;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/recents/anim/WallpaperElement<",
            "TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/home/recents/anim/WallpaperElement$mWallpaperScaleObserver$1;->this$0:Lcom/miui/home/recents/anim/WallpaperElement;

    .line 172
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/miui/home/recents/anim/WallpaperElement$mWallpaperScaleObserver$1;->this$0:Lcom/miui/home/recents/anim/WallpaperElement;

    invoke-static {p0}, Lcom/miui/home/recents/anim/WallpaperElement;->access$updateDefaultScale(Lcom/miui/home/recents/anim/WallpaperElement;)V

    return-void
.end method
