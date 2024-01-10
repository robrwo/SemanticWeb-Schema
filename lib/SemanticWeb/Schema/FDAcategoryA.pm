use utf8;

package SemanticWeb::Schema::FDAcategoryA;

# ABSTRACT: A designation by the US FDA signifying that adequate and well-controlled studies have failed to demonstrate a risk to the fetus in the first trimester of pregnancy (and there is no evidence of risk in later trimesters).

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'FDAcategoryA';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A designation by the US FDA signifying that adequate and well-controlled
studies have failed to demonstrate a risk to the fetus in the first
trimester of pregnancy (and there is no evidence of risk in later
trimesters).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
