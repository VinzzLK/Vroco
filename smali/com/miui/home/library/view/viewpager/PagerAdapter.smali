.class public abstract Lcom/miui/home/library/view/viewpager/PagerAdapter;
.super Ljava/lang/Object;
.source "PagerAdapter.java"


# instance fields
.field private final mObservable:Landroid/database/DataSetObservable;

.field private mViewPagerObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/view/viewpager/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public abstract destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
.end method

.method public abstract finishUpdate(Landroid/view/ViewGroup;)V
.end method

.method public abstract getCount()I
.end method

.method public abstract getItemPosition(Ljava/lang/Object;)I
.end method

.method public abstract getPageTitle(I)Ljava/lang/CharSequence;
.end method

.method public getPageWidth(I)F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public abstract instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end method

.method public abstract isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 287
    monitor-enter p0

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/PagerAdapter;->mViewPagerObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 291
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    iget-object p0, p0, Lcom/miui/home/library/view/viewpager/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {p0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void

    :catchall_0
    move-exception v0

    .line 291
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/miui/home/library/view/viewpager/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {p0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
.end method

.method public abstract saveState()Landroid/os/Parcelable;
.end method

.method public abstract setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
.end method

.method setViewPagerObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .line 314
    monitor-enter p0

    .line 315
    :try_start_0
    iput-object p1, p0, Lcom/miui/home/library/view/viewpager/PagerAdapter;->mViewPagerObserver:Landroid/database/DataSetObserver;

    .line 316
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract startUpdate(Landroid/view/ViewGroup;)V
.end method
