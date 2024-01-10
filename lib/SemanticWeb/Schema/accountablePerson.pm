use utf8;

package SemanticWeb::Schema::accountablePerson;

# ABSTRACT: Specifies the Person that is legally accountable for the CreativeWork.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'accountablePerson';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Specifies the Person that is legally accountable for the CreativeWork.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
