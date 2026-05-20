.class public Lmiuix/animation/Folme$FolmeImpl;
.super Ljava/lang/Object;
.source "Folme.java"

# interfaces
.implements Lmiuix/animation/IFolme;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/Folme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolmeImpl"
.end annotation


# instance fields
.field private mBlink:Lmiuix/animation/IBlinkStyle;

.field private mHover:Lmiuix/animation/IHoverStyle;

.field private mState:Lmiuix/animation/IStateStyle;

.field private mTargets:[Lmiuix/animation/IAnimTarget;

.field private mTouch:Lmiuix/animation/ITouchStyle;

.field private mVisible:Lmiuix/animation/IVisibleStyle;


# direct methods
.method private varargs constructor <init>([Lmiuix/animation/IAnimTarget;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lmiuix/animation/Folme$FolmeImpl;->mTargets:[Lmiuix/animation/IAnimTarget;

    const/4 p0, 0x0

    .line 178
    invoke-static {p0}, Lmiuix/animation/Folme;->access$000(Z)V

    .line 179
    invoke-static {}, Lmiuix/animation/Folme;->access$100()V

    return-void
.end method

.method synthetic constructor <init>([Lmiuix/animation/IAnimTarget;Lmiuix/animation/Folme$1;)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lmiuix/animation/Folme$FolmeImpl;-><init>([Lmiuix/animation/IAnimTarget;)V

    return-void
.end method


# virtual methods
.method public blink()Lmiuix/animation/IBlinkStyle;
    .locals 2

    .line 252
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mBlink:Lmiuix/animation/IBlinkStyle;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lmiuix/animation/controller/FolmeBlink;

    iget-object v1, p0, Lmiuix/animation/Folme$FolmeImpl;->mTargets:[Lmiuix/animation/IAnimTarget;

    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeBlink;-><init>([Lmiuix/animation/IAnimTarget;)V

    iput-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mBlink:Lmiuix/animation/IBlinkStyle;

    .line 255
    :cond_0
    iget-object p0, p0, Lmiuix/animation/Folme$FolmeImpl;->mBlink:Lmiuix/animation/IBlinkStyle;

    return-object p0
.end method

.method clean()V
    .locals 3

    .line 183
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mTouch:Lmiuix/animation/ITouchStyle;

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0}, Lmiuix/animation/IStateContainer;->clean()V

    .line 186
    :cond_0
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mVisible:Lmiuix/animation/IVisibleStyle;

    if-eqz v0, :cond_1

    .line 187
    invoke-interface {v0}, Lmiuix/animation/IStateContainer;->clean()V

    .line 189
    :cond_1
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mState:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_2

    .line 190
    invoke-interface {v0}, Lmiuix/animation/IStateContainer;->clean()V

    .line 192
    :cond_2
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mHover:Lmiuix/animation/IHoverStyle;

    if-eqz v0, :cond_3

    .line 193
    invoke-interface {v0}, Lmiuix/animation/IStateContainer;->clean()V

    .line 195
    :cond_3
    iget-object p0, p0, Lmiuix/animation/Folme$FolmeImpl;->mTargets:[Lmiuix/animation/IAnimTarget;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p0, v1

    .line 196
    invoke-static {v2}, Lmiuix/animation/FolmeFactory;->clean(Lmiuix/animation/IAnimTarget;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method end()V
    .locals 3

    .line 201
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mTouch:Lmiuix/animation/ITouchStyle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v2, v1, [Ljava/lang/Object;

    .line 202
    invoke-interface {v0, v2}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    .line 204
    :cond_0
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mVisible:Lmiuix/animation/IVisibleStyle;

    if-eqz v0, :cond_1

    new-array v2, v1, [Ljava/lang/Object;

    .line 205
    invoke-interface {v0, v2}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    .line 207
    :cond_1
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mState:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_2

    new-array v2, v1, [Ljava/lang/Object;

    .line 208
    invoke-interface {v0, v2}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    .line 210
    :cond_2
    iget-object p0, p0, Lmiuix/animation/Folme$FolmeImpl;->mHover:Lmiuix/animation/IHoverStyle;

    if-eqz p0, :cond_3

    new-array v0, v1, [Ljava/lang/Object;

    .line 211
    invoke-interface {p0, v0}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public hover()Lmiuix/animation/IHoverStyle;
    .locals 2

    .line 217
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mHover:Lmiuix/animation/IHoverStyle;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lmiuix/animation/controller/FolmeHover;

    iget-object v1, p0, Lmiuix/animation/Folme$FolmeImpl;->mTargets:[Lmiuix/animation/IAnimTarget;

    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeHover;-><init>([Lmiuix/animation/IAnimTarget;)V

    iput-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mHover:Lmiuix/animation/IHoverStyle;

    .line 220
    :cond_0
    iget-object p0, p0, Lmiuix/animation/Folme$FolmeImpl;->mHover:Lmiuix/animation/IHoverStyle;

    return-object p0
.end method

.method public state()Lmiuix/animation/IStateStyle;
    .locals 1

    .line 244
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mState:Lmiuix/animation/IStateStyle;

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mTargets:[Lmiuix/animation/IAnimTarget;

    invoke-static {v0}, Lmiuix/animation/controller/StateComposer;->composeStyle([Lmiuix/animation/IAnimTarget;)Lmiuix/animation/controller/IFolmeStateStyle;

    move-result-object v0

    iput-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mState:Lmiuix/animation/IStateStyle;

    .line 247
    :cond_0
    iget-object p0, p0, Lmiuix/animation/Folme$FolmeImpl;->mState:Lmiuix/animation/IStateStyle;

    return-object p0
.end method

.method public touch()Lmiuix/animation/ITouchStyle;
    .locals 2

    .line 225
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mTouch:Lmiuix/animation/ITouchStyle;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lmiuix/animation/controller/FolmeTouch;

    iget-object v1, p0, Lmiuix/animation/Folme$FolmeImpl;->mTargets:[Lmiuix/animation/IAnimTarget;

    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeTouch;-><init>([Lmiuix/animation/IAnimTarget;)V

    .line 227
    new-instance v1, Lmiuix/animation/controller/FolmeFont;

    invoke-direct {v1}, Lmiuix/animation/controller/FolmeFont;-><init>()V

    .line 228
    invoke-virtual {v0, v1}, Lmiuix/animation/controller/FolmeTouch;->setFontStyle(Lmiuix/animation/controller/FolmeFont;)V

    .line 229
    iput-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mTouch:Lmiuix/animation/ITouchStyle;

    .line 231
    :cond_0
    iget-object p0, p0, Lmiuix/animation/Folme$FolmeImpl;->mTouch:Lmiuix/animation/ITouchStyle;

    return-object p0
.end method

.method public visible()Lmiuix/animation/IVisibleStyle;
    .locals 2

    .line 236
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mVisible:Lmiuix/animation/IVisibleStyle;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lmiuix/animation/controller/FolmeVisible;

    iget-object v1, p0, Lmiuix/animation/Folme$FolmeImpl;->mTargets:[Lmiuix/animation/IAnimTarget;

    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeVisible;-><init>([Lmiuix/animation/IAnimTarget;)V

    iput-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mVisible:Lmiuix/animation/IVisibleStyle;

    .line 239
    :cond_0
    iget-object p0, p0, Lmiuix/animation/Folme$FolmeImpl;->mVisible:Lmiuix/animation/IVisibleStyle;

    return-object p0
.end method
