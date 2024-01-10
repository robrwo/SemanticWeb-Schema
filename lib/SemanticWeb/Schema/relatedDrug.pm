use utf8;

package SemanticWeb::Schema::relatedDrug;

# ABSTRACT: Any other drug related to this one

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'relatedDrug';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Any other drug related to this one, for example commonly-prescribed
alternatives.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
