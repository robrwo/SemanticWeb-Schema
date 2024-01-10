use utf8;

package SemanticWeb::Schema::procedureType;

# ABSTRACT: The type of procedure

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'procedureType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The type of procedure, for example Surgical, Noninvasive, or Percutaneous.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
