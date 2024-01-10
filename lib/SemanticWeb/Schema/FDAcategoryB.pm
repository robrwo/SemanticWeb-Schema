use utf8;

package SemanticWeb::Schema::FDAcategoryB;

# ABSTRACT: A designation by the US FDA signifying that animal reproduction studies have failed to demonstrate a risk to the fetus and there are no adequate and well-controlled studies in pregnant women.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'FDAcategoryB';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A designation by the US FDA signifying that animal reproduction studies
have failed to demonstrate a risk to the fetus and there are no adequate
and well-controlled studies in pregnant women.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
