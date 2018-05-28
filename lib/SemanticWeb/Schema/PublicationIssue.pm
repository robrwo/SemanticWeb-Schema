package SemanticWeb::Schema::PublicationIssue;

# ABSTRACT: A part of a successively published publication such as a periodical or publication volume

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

A part of a successively published publication such as a periodical or
publication volume, often numbered, usually containing a grouping of works
such as articles.</p> <p><a
href="http://blog.schema.org/2014/09/schemaorg-support-for-bibliographic_2.
html">blog post</a>.

=end html




=head1 ATTRIBUTES


=head2 C<issue_number>

C<issueNumber>

Identifies the issue of publication; for example, "iii" or "2".


A issue_number should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=item C<Str>

=back

=cut

has issue_number => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'issueNumber',
    json_ld_serializer => \&_serialize_issue_number,
);

sub _serialize_issue_number { $_[0]->_serializer('issue_number') }


=head2 C<page_end>

C<pageEnd>

The page on which the work ends; for example "138" or "xvi".


A page_end should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has page_end => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'pageEnd',
    json_ld_serializer => \&_serialize_page_end,
);

sub _serialize_page_end { $_[0]->_serializer('page_end') }


=head2 C<page_start>

C<pageStart>

The page on which the work starts; for example "135" or "xiii".


A page_start should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=item C<Str>

=back

=cut

has page_start => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'pageStart',
    json_ld_serializer => \&_serialize_page_start,
);

sub _serialize_page_start { $_[0]->_serializer('page_start') }


=head2 C<pagination>



Any description of pages that is not separated into pageStart and pageEnd;
for example, "1-6, 9, 55" or "10-12, 46-49".


A pagination should be one of the following types:

=over

=item C<Str>

=back

=cut

has pagination => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'pagination',
    json_ld_serializer => \&_serialize_pagination,
);

sub _serialize_pagination { $_[0]->_serializer('pagination') }




around json_ld_type => sub { return 'PublicationIssue' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'issueNumber' => \&_serialize_issue_number,
       'pageEnd' => \&_serialize_page_end,
       'pageStart' => \&_serialize_page_start,
       'pagination' => \&_serialize_pagination,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
