use utf8;

package SemanticWeb::Schema::DataCatalog;

# ABSTRACT: A collection of datasets.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'DataCatalog';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.9.0';

=encoding utf8

=head1 DESCRIPTION

A collection of datasets.




=head1 ATTRIBUTES


=head2 C<dataset>



A dataset contained in this catalog.


A dataset should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Dataset']>

=back

=cut

has dataset => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'dataset',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
