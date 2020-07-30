use utf8;

package SemanticWeb::Schema::Collection;

# ABSTRACT: A collection of items e

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Collection';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v9.0.0';

=encoding utf8

=head1 DESCRIPTION

A collection of items e.g. creative works or products.




=head1 ATTRIBUTES


=head2 C<collection_size>

C<collectionSize>

=begin html

<p>The number of items in the <a class="localLink"
href="http://schema.org/Collection">Collection</a>.<p>

=end html


A collection_size should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=head2 C<_has_collection_size>

A predicate for the L</collection_size> attribute.

=cut

has collection_size => (
    is        => 'rw',
    predicate => '_has_collection_size',
    json_ld   => 'collectionSize',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
