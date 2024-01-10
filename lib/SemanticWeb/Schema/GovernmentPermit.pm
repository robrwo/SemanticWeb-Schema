use utf8;

package SemanticWeb::Schema::GovernmentPermit;

# ABSTRACT: A permit issued by a government agency.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Permit /;


use MooX::JSON_LD 'GovernmentPermit';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A permit issued by a government agency.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Permit>

=cut

1;
