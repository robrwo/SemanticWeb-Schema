use utf8;

package SemanticWeb::Schema::OfficeEquipmentStore;

# ABSTRACT: An office equipment store.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use MooX::JSON_LD 'OfficeEquipmentStore';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

An office equipment store.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;
