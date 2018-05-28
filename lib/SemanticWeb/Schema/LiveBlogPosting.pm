package SemanticWeb::Schema::LiveBlogPosting;

# ABSTRACT: A blog post intended to provide a rolling textual coverage of an ongoing event through continuous updates.

use Moo;

extends qw/ SemanticWeb::Schema::BlogPosting /;


use MooX::JSON_LD 'LiveBlogPosting';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A blog post intended to provide a rolling textual coverage of an ongoing
event through continuous updates.




=head1 ATTRIBUTES


=head2 C<coverage_end_time>

C<coverageEndTime>

The time when the live blog will stop covering the Event. Note that
coverage may continue after the Event concludes.


A coverage_end_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has coverage_end_time => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'coverageEndTime',
    json_ld_serializer => \&_serialize_coverage_end_time,
);

sub _serialize_coverage_end_time { $_[0]->_serializer('coverage_end_time') }


=head2 C<coverage_start_time>

C<coverageStartTime>

The time when the live blog will begin covering the Event. Note that
coverage may begin before the Event's start time. The LiveBlogPosting may
also be created before coverage begins.


A coverage_start_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has coverage_start_time => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'coverageStartTime',
    json_ld_serializer => \&_serialize_coverage_start_time,
);

sub _serialize_coverage_start_time { $_[0]->_serializer('coverage_start_time') }


=head2 C<live_blog_update>

C<liveBlogUpdate>

An update to the LiveBlog.


A live_blog_update should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BlogPosting']>

=back

=cut

has live_blog_update => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'liveBlogUpdate',
    json_ld_serializer => \&_serialize_live_blog_update,
);

sub _serialize_live_blog_update { $_[0]->_serializer('live_blog_update') }




=head1 SEE ALSO



L<SemanticWeb::Schema::BlogPosting>

=cut

1;
