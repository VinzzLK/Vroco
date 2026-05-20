.class public final synthetic Lcom/miui/home/recents/anim/ConnectAnimManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

.field public final synthetic f$1:Lcom/miui/home/recents/NavStubView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/anim/ConnectAnimManager;Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    iput-object p2, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/recents/NavStubView;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFFLcom/miui/home/recents/anim/IValueCallBack;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    iget-object v1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/recents/NavStubView;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/miui/home/recents/anim/ConnectAnimManager;->$r8$lambda$5cvcK_YYMeagb0etcuF9VgJiWhM(Lcom/miui/home/recents/anim/ConnectAnimManager;Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;FFFLcom/miui/home/recents/anim/IValueCallBack;)V

    return-void
.end method
