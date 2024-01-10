use utf8;

package SemanticWeb::Schema::molecularWeight;

# ABSTRACT: This is the molecular weight of the entity being described

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'molecularWeight';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

This is the molecular weight of the entity being described, not of the
parent. Units should be included in the form '&lt;Number&gt; &lt;unit&gt;',
for example '12 amu' or as '&lt;QuantitativeValue&gt;.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
