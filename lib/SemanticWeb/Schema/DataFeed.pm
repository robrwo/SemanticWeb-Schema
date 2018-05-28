package SemanticWeb::Schema::DataFeed;

# ABSTRACT: A single feed providing structured information about one or more entities or topics.

use Moo;

extends qw/ SemanticWeb::Schema::Dataset /;


use MooX::JSON_LD 'DataFeed';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A single feed providing structured information about one or more entities
or topics.




=head1 ATTRIBUTES


=head2 C<data_feed_element>

C<dataFeedElement>

An item within in a data feed. Data feeds may have many elements.


A data_feed_element should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DataFeedItem']>

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=cut

has data_feed_element => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'dataFeedElement',
    json_ld_serializer => \&_serialize_data_feed_element,
);

sub _serialize_data_feed_element { $_[0]->_serializer('data_feed_element') }




=head1 SEE ALSO



L<SemanticWeb::Schema::Dataset>

=cut

1;
